﻿/// <reference path="angular.min.js" />
/// <reference path="angular-route.min.js" />


var app = angular
    .module("Demo", ["ngRoute"])
    .config(function ($routeProvider, $locationProvider) {
        $routeProvider.caseInsensitiveMatch = true;

        $routeProvider
            .when("/home", {
                templateUrl: "Templates/home.html",
                controller: "homeController",
                controllerAs: "homeCtrl"
            })
            .when("/courses", {
                templateUrl: "Templates/courses.html",
                controller: "coursesController",
                controllerAs: "coursesCtrl"
            })
            .when("/students", {
                templateUrl: "Templates/students.html",
                controller: "studentsController",
                controllerAs: "studentsCtrl",
                resolve: {
                    studentslist: function ($http) {
                        return $http.get("StudentService.asmx/GetAllStudents")
                            .then(function (response) {
                                return response.data;
                            })
                    }
                }
            })
            .when("/students/:id", {
                templateUrl: "Templates/studentDetails.html",
                controller: "studentDetailsController",
                controllerAs: "studentDetailsCtrl"
            })
            .when("/studentsSearch/:name?", {
                templateUrl: "Templates/studentsSearch.html",
                controller: "studentsSearchController",
                controllerAs: "studentsSearchCtrl"
            })
            .otherwise({
                redirectTo: "/home"
            })
        $locationProvider.html5Mode(true);
    })
    .controller("homeController", function () {
        this.message = "Home";
    })
    .controller("coursesController", function () {
        this.courses = ["Syber Security & Sysadmin", "Data Analytics", "Frontend", "Backend", "Mobile Development"];
    })
    .controller("studentsController", function (studentslist, $route, $location) {
        var vm = this;

        vm.searchStudent = function () {
            if (vm.name) {
                $location.url("/studentsSearch/" + vm.name);
            }
            else {
                $location.url("/studentsSearch");
            }
        }

        vm.reloadData = function () {
            $route.reload();
        };
        vm.students = studentslist;
    })
    .controller("studentDetailsController", function ($http, $routeParams) {
        var vm = this;

        $http({
            url: "StudentService.asmx/GetStudent",
            method: "get",
            params: { id: $routeParams.id }
        }).then(function (response) {
            vm.student = response.data;
        })
    })

    .controller("studentsSearchController", function ($http, $routeParams) {
        var vm = this;

        if ($routeParams.name) {
            $http({
                url: "StudentService.asmx/GetStudentsByName",
                method: "get",
                params: { name: $routeParams.name }
            }).then(function (response) {
                vm.students = response.data;
            })
        }
        else {
            $http.get("StudentService.asmx/GetAllStudents")
                .then(function (response) {
                    vm.students = response.data;
                })
        }
    });
    

