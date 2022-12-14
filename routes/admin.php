<?php

use Illuminate\Support\Facades\Route;


Route::group(['prefix'=>'AdminPanel','middleware'=>['isAdmin','auth']], function(){
    Route::get('/','admin\AdminPanelController@index')->name('admin.index');

    Route::get('/read-all-notifications','admin\AdminPanelController@readAllNotifications')->name('admin.notifications.readAll');
    Route::get('/notification/{id}/details','admin\AdminPanelController@notificationDetails')->name('admin.notification.details');


    // admin profile
    Route::get('/my-profile','admin\AdminPanelController@EditProfile')->name('admin.myProfile');
    Route::post('/my-profile','admin\AdminPanelController@UpdateProfile')->name('admin.myProfile.update');
    Route::get('/my-password','admin\AdminPanelController@EditPassword')->name('admin.myPassword');
    Route::post('/my-password','admin\AdminPanelController@UpdatePassword')->name('admin.myPassword.update');
    Route::get('/notifications-settings','admin\AdminPanelController@EditNotificationsSettings')->name('admin.notificationsSettings');
    Route::post('/notifications-settings','admin\AdminPanelController@UpdateNotificationsSettings')->name('admin.notificationsSettings.update');


    // admins & moderators
    Route::group(['prefix'=>'admins'], function(){
        Route::get('/','admin\AdminUsersController@index')->name('admin.adminUsers');
        Route::get('/create','admin\AdminUsersController@create')->name('admin.adminUsers.create');
        Route::post('/create','admin\AdminUsersController@store')->name('admin.adminUsers.store');
        Route::get('/{id}/block/{action}','admin\AdminUsersController@blockAction')->name('admin.adminUsers.block');
        Route::get('/{id}/edit','admin\AdminUsersController@edit')->name('admin.adminUsers.edit');
        Route::post('/{id}/edit','admin\AdminUsersController@update')->name('admin.adminUsers.update');
        Route::get('/{id}/delete','admin\AdminUsersController@delete')->name('admin.adminUsers.delete');
    });
 

    // clients
    Route::group(['prefix'=>'ArcheiveClients'], function(){
        Route::get('/','admin\ClientUsersController@index')->name('admin.clientUsers');
        Route::get('/filter','admin\ClientUsersController@filterClients')->name('admin.filterClients');
        Route::get('/create','admin\ClientUsersController@create')->name('admin.clientUsers.create');
        Route::post('/create','admin\ClientUsersController@store')->name('admin.clientUsers.store');
        Route::get('/{id}/edit','admin\ClientUsersController@edit')->name('admin.clientUsers.edit');
        Route::post('/{id}/edit','admin\ClientUsersController@update')->name('admin.clientUsers.update');
        Route::get('/{id}/delete','admin\ClientUsersController@delete')->name('admin.clientUsers.delete');
    });

    
    // roles & permissions
    Route::group(['prefix'=>'roles'], function(){
        Route::get('/','admin\RolesController@index')->name('admin.roles');
        Route::post('/create','admin\RolesController@store')->name('admin.roles.store');
        Route::post('/{id}/edit','admin\RolesController@update')->name('admin.roles.update');
        Route::get('/{id}/delete','admin\RolesController@delete')->name('admin.roles.delete');
    });


    // settings
    Route::group(['prefix'=>'settings'], function(){
        Route::get('/','admin\SettingsController@generalSettings')->name('admin.settings.general');
        Route::get('/{id}','admin\SettingsController@editSettings')->name('admin.settings.edit');
        Route::post('/','admin\SettingsController@updateSettings')->name('admin.settings.update');
        Route::get('/{key}/deletePhoto','admin\SettingsController@deleteSettingPhoto')->name('admin.settings.deletePhoto');
    });


    // parteners
    Route::group(['prefix'=>'parteners'], function(){
    Route::get('/','admin\PartenerController@index')->name('admin.parteners');
    Route::post('/create','admin\PartenerController@store')->name('admin.parteners.store');
    Route::post('/{id}/edit','admin\PartenerController@update')->name('admin.parteners.update');
    Route::get('/{id}/delete','admin\PartenerController@delete')->name('admin.parteners.delete');
    });


    // clients
    Route::group(['prefix'=>'clients'], function(){
    Route::get('/','admin\ClientsController@index')->name('admin.clients');
    Route::post('/create','admin\ClientsController@store')->name('admin.clients.store');
    Route::post('/{id}/edit','admin\ClientsController@update')->name('admin.clients.update');
    Route::get('/{id}/delete','admin\ClientsController@delete')->name('admin.clients.delete');
    });


    // features
    Route::group(['prefix'=>'features'], function(){
    Route::get('/','admin\FeaturesController@index')->name('admin.features');
    Route::post('/create','admin\FeaturesController@store')->name('admin.features.store');
    Route::post('/{id}/edit','admin\FeaturesController@update')->name('admin.features.update');
    Route::get('/{id}/delete','admin\FeaturesController@delete')->name('admin.features.delete');
    });

});