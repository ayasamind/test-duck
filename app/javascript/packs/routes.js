
//routerの設定ファイル
import AwsAccounts from 'components/AwsAccounts'
import CreateAwsAccounts from 'components/CreateAwsAccounts'
import ShowAwsAccount from 'components/ShowAwsAccount'

const routes = [
  { path:'/', component: AwsAccounts },
  { path:'/createawsaccounts', component: CreateAwsAccounts },
  { path:'/showawsaccount/:id', name:'ShowAwsAccount', component: ShowAwsAccount },
]

export default routes
