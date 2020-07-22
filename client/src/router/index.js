import Vue from 'vue'
import Router from 'vue-router'

//import
import UserIndex from '@/components/Users/Index'
import UserShow from '@/components/Users/ShowUser'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/users',
      name: 'users',
      component: UserIndex
    },{
      path: '/user',
      name: 'user',
      component: UserShow
    }

  ]
})
