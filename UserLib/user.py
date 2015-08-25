
class User(object):

    def __init__(self, login, password, firstName, lastName, accountId, email, enabled=None, accountAdmin=None,
                    liteUser=None, engageUser=None, company=None, jobTitle=None, phone=None, address1=None, address2=None,
                    country=None, state=None, zip=None, collaborateLogin=None,
                    autoRefreshEnabled=None, autoRefreshInterval=None, id=None ):     #user object creation
        self.login = login
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        self.accountId = accountId
        self.email = email
        self.enabled = enabled
        self.accountAdmin = accountAdmin
        self.liteUser = liteUser
        self.engageUser = engageUser
        self.company = company
        self.jobTitle = jobTitle
        self.phone = phone
        self.address1 = address1
        self.address2 = address2
        self.country = country
        self.state = state
        self.zip = zip
        self.collaborateLogin = collaborateLogin
        self.autoRefreshEnabled = autoRefreshEnabled
        self.autoRefreshInterval = autoRefreshInterval
        self.id = id

    def __str__(self):              #print operation overloading
        return "{0}\n{1}\n{2}\n{3}\n{4}\n{5}\n{6}\n{7}\n{8}\n{9}\n{10}\n{11}\n{12}\n{13}\n{14}\n{15}\n{16}\n{17}\n{18}\n{19}\n{20}\n{21}".format(self.login,
                                                self.password, self.firstName, self.lastName, self.accountId, self.email, self.enabled,self.accountAdmin,
                                                self.liteUser, self.engageUser,  self.company, self.jobTitle,
                                                self.phone, self.address1, self.address2, self.country, self.state,
                                                self.zip, self.collaborateLogin, self.autoRefreshEnabled,
                                                self.autoRefreshInterval, self.id)
