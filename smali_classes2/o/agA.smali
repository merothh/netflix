.class public Lo/agA;
.super Lo/agz;
.source ""


# static fields
.field public static final dA:Lo/agz;

.field public static final dB:Lo/agz;

.field public static final dC:Lo/agz;

.field public static final dD:Lo/agz;

.field public static final dE:Lo/agz;

.field public static final dF:Lo/agz;

.field public static final dG:Lo/agz;

.field public static final dH:Lo/agz;

.field public static final dI:Lo/agz;

.field public static final dJ:Lo/agz;

.field public static final dK:Lo/agz;

.field public static final dL:Lo/agz;

.field public static final dM:Lo/agz;

.field public static final dN:Lo/agz;

.field public static final dO:Lo/agz;

.field public static final dP:Lo/agz;

.field public static final dQ:Lo/agz;

.field public static final dR:Lo/agz;

.field public static final dS:Lo/agz;

.field public static final dT:Lo/agz;

.field public static final dU:Lo/agz;

.field public static final dV:Lo/agz;

.field public static final dW:Lo/agz;

.field public static final dX:Lo/agz;

.field public static final dY:Lo/agz;

.field public static final dZ:Lo/agz;

.field public static final dn:Lo/agz;

.field public static final do:Lo/agz;

.field public static final dq:Lo/agz;

.field public static final dr:Lo/agz;

.field public static final ds:Lo/agz;

.field public static final dt:Lo/agz;

.field public static final du:Lo/agz;

.field public static final dv:Lo/agz;

.field public static final dw:Lo/agz;

.field public static final dx:Lo/agz;

.field public static final dy:Lo/agz;

.field public static final dz:Lo/agz;

.field public static final eA:Lo/agz;

.field public static final eB:Lo/agz;

.field public static final eC:Lo/agz;

.field public static final eD:Lo/agz;

.field public static final eE:Lo/agz;

.field public static final eF:Lo/agz;

.field public static final eG:Lo/agz;

.field public static final eH:Lo/agz;

.field public static final eI:Lo/agz;

.field public static final eJ:Lo/agz;

.field public static final eK:Lo/agz;

.field public static final eL:Lo/agz;

.field public static final eM:Lo/agz;

.field public static final eN:Lo/agz;

.field public static final eO:Lo/agz;

.field public static final eP:Lo/agz;

.field public static final eQ:Lo/agz;

.field public static final eR:Lo/agz;

.field public static final eS:Lo/agz;

.field public static final eT:Lo/agz;

.field public static final eU:Lo/agz;

.field public static final eV:Lo/agz;

.field public static final eW:Lo/agz;

.field public static final eX:Lo/agz;

.field public static final eY:Lo/agz;

.field public static final eZ:Lo/agz;

.field public static final ea:Lo/agz;

.field public static final eb:Lo/agz;

.field public static final ec:Lo/agz;

.field public static final ed:Lo/agz;

.field public static final ee:Lo/agz;

.field public static final ef:Lo/agz;

.field public static final eg:Lo/agz;

.field public static final eh:Lo/agz;

.field public static final ei:Lo/agz;

.field public static final ej:Lo/agz;

.field public static final ek:Lo/agz;

.field public static final el:Lo/agz;

.field public static final em:Lo/agz;

.field public static final en:Lo/agz;

.field public static final eo:Lo/agz;

.field public static final ep:Lo/agz;

.field public static final eq:Lo/agz;

.field public static final er:Lo/agz;

.field public static final es:Lo/agz;

.field public static final et:Lo/agz;

.field public static final eu:Lo/agz;

.field public static final ev:Lo/agz;

.field public static final ew:Lo/agz;

.field public static final ex:Lo/agz;

.field public static final ey:Lo/agz;

.field public static final ez:Lo/agz;

.field public static final fa:Lo/agz;

.field public static final fb:Lo/agz;

.field public static final fc:Lo/agz;

.field public static final fd:Lo/agz;

.field public static final fe:Lo/agz;

.field public static final ff:Lo/agz;

.field public static final fg:Lo/agz;

.field public static final fh:Lo/agz;

.field public static final fi:Lo/agz;

.field public static final fj:Lo/agz;

.field public static final fk:Lo/agz;

.field public static final fl:Lo/agz;

.field public static final fm:Lo/agz;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x16

    const-string v3, "Error parsing ASN.1."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dq:Lo/agz;

    .line 24
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x17

    const-string v3, "Error encoding ASN.1."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->do:Lo/agz;

    .line 25
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x31

    const-string v3, "Error parsing XML."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dn:Lo/agz;

    .line 26
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x32

    const-string v3, "Error encoding XML."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dv:Lo/agz;

    .line 29
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x3f1

    const-string v3, "Master token sequence number does not have the expected value."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ds:Lo/agz;

    .line 30
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x3f5

    const-string v3, "Master token entity identity is revoked."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dt:Lo/agz;

    .line 33
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string v2, "The user identity was not found."

    const/16 v3, 0x7dd

    invoke-direct {v0, v3, v1, v2}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dr:Lo/agz;

    .line 34
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x7de

    const-string v4, "The user identity must be reauthenticated because the password version changed."

    invoke-direct {v0, v3, v1, v4}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->du:Lo/agz;

    .line 35
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x7df

    const-string v4, "The user ID token MSL user type is incorrect."

    invoke-direct {v0, v3, v1, v4}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dx:Lo/agz;

    .line 36
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x7e0

    const-string v4, "The user ID token MSL user is invalid."

    invoke-direct {v0, v3, v1, v4}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dw:Lo/agz;

    .line 37
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x7e1

    const-string v4, "Error communicating with membership service"

    invoke-direct {v0, v3, v1, v4}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dA:Lo/agz;

    .line 38
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x7e2

    const-string v4, "Previous credentials are no longer valid"

    invoke-direct {v0, v3, v1, v4}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dy:Lo/agz;

    .line 39
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x7e3

    invoke-direct {v0, v3, v1, v2}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dz:Lo/agz;

    .line 40
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x7e4

    invoke-direct {v0, v3, v1, v2}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dB:Lo/agz;

    .line 41
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x7e5

    invoke-direct {v0, v3, v1, v2}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dF:Lo/agz;

    .line 45
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfa5

    const-string v3, "Entity not recognized."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dD:Lo/agz;

    .line 46
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfa6

    const-string v3, "Entity used incorrect entity authentication data type."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dE:Lo/agz;

    .line 47
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfb8

    const-string v3, "Cryptex RSA key set not found."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dC:Lo/agz;

    .line 48
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfb9

    const-string v3, "Entity is revoked."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dK:Lo/agz;

    .line 49
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfbc

    const-string v3, "Error parsing Anycast challenge."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dJ:Lo/agz;

    .line 50
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfbd

    const-string v3, "Anycast challenge is not acceptable."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dG:Lo/agz;

    .line 51
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfbe

    const-string v3, "X.509 certificates are missing from entity auth."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dH:Lo/agz;

    .line 52
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfbf

    const-string v3, "Cryptex ECC key set not found."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dI:Lo/agz;

    .line 53
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfc0

    const-string v3, "Invalid MSL Trust Store found."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dP:Lo/agz;

    .line 54
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfc1

    const-string v3, "Entity migration is not allowed."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dN:Lo/agz;

    .line 55
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfc2

    const-string v3, "FairPlay Streaming key request is invalid."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dM:Lo/agz;

    .line 56
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfc3

    const-string v3, "Widevine key request is invalid."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dL:Lo/agz;

    .line 57
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfc4

    const-string v3, "Widevine device type does not match that in the key request."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dO:Lo/agz;

    .line 58
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0xfc5

    const-string v3, "Exception from Widevine Challenge Info endpoint"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dQ:Lo/agz;

    .line 61
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1388

    const-string v3, "User must login again."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dT:Lo/agz;

    .line 62
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1389

    const-string v3, "Netflix ID cookie identity has expired."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dR:Lo/agz;

    .line 63
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x138a

    const-string v3, "Netflix ID cookie is blank."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dU:Lo/agz;

    .line 64
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x138b

    const-string v3, "Secure Netflix ID cookie is blank."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dS:Lo/agz;

    .line 65
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x138c

    const-string v3, "Netflix Id Cookie is device bound, and can not be used for user identity"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dY:Lo/agz;

    .line 66
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x138d

    const-string v3, "Unknown error communicating with authentication manager."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dZ:Lo/agz;

    .line 67
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x138e

    const-string v3, "Error communicating with authentication manager."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dW:Lo/agz;

    .line 68
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x138f

    const-string v3, "Email or password is incorrect."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dV:Lo/agz;

    .line 69
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1390

    const-string v3, "Password has not been set."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->dX:Lo/agz;

    .line 70
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->f:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1391

    const-string v3, "SSO token is blank."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eb:Lo/agz;

    .line 71
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1392

    const-string v3, "SSO token is not associated with a Netflix user."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ec:Lo/agz;

    .line 72
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1394

    const-string v3, "Profile GUID is blank."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ea:Lo/agz;

    .line 73
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->f:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1397

    const-string v3, "SSO token invalid."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ee:Lo/agz;

    .line 74
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1399

    const-string v3, "Error communicating with the account manager."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ed:Lo/agz;

    .line 75
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x139a

    const-string v3, "SSO user association failed."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ej:Lo/agz;

    .line 76
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x139b

    const-string v3, "SSO user disassociation failed."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ei:Lo/agz;

    .line 77
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x139c

    const-string v3, "MDX user authentication data verification failed."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eh:Lo/agz;

    .line 78
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x139d

    const-string v3, "MDX device activation check failed."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eg:Lo/agz;

    .line 79
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x139e

    const-string v3, "MDX user authentication data action is invalid."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ef:Lo/agz;

    .line 80
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x139f

    const-string v3, "CTicket decryption failed."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->em:Lo/agz;

    .line 81
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13a2

    const-string v3, "Error creating CTicket crypto context."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->en:Lo/agz;

    .line 82
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13a3

    const-string v3, "MDX controller or target PIN is blank."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->el:Lo/agz;

    .line 83
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13a4

    const-string v3, "MDX controller and target PIN mismatch."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ek:Lo/agz;

    .line 84
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13a5

    const-string v3, "MDX controller user ID token or CTicket is not decrypted or verified."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eo:Lo/agz;

    .line 85
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13a7

    const-string v3, "MDX controller authentication data is invalid."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ep:Lo/agz;

    .line 86
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13a8

    const-string v3, "User authentication data does not match entity identity."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->er:Lo/agz;

    .line 87
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13a9

    const-string v3, "Entity used incorrect user authentication data type."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->es:Lo/agz;

    .line 88
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13aa

    const-string v3, "SSO user association failed because the customer is not a member."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->et:Lo/agz;

    .line 89
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13ab

    const-string v3, "SSO user association failed because the customer is a former member."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eq:Lo/agz;

    .line 90
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13ac

    const-string v3, "SSO user association failed because the token identifies a different member."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ey:Lo/agz;

    .line 91
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13ae

    const-string v3, "Not permitted to switch to the requested user profile."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ev:Lo/agz;

    .line 92
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13af

    const-string v3, "Error communicating with the membership manager."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ew:Lo/agz;

    .line 93
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string v2, "No entity association record found for the user."

    const/16 v3, 0x13b0

    invoke-direct {v0, v3, v1, v2}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ex:Lo/agz;

    .line 94
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v3, 0x13b1

    const-string v4, "The MSL user type is incorrect."

    invoke-direct {v0, v3, v1, v4}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eu:Lo/agz;

    .line 95
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string v3, "User entity association record query returned an error."

    const/16 v4, 0x13b2

    invoke-direct {v0, v4, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eB:Lo/agz;

    .line 96
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string v4, "User entity association record query returned different entity identities."

    const/16 v5, 0x13b3

    invoke-direct {v0, v5, v1, v4}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eC:Lo/agz;

    .line 97
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string v5, "User entity association record is deactivated."

    const/16 v6, 0x13b4

    invoke-direct {v0, v6, v1, v5}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eD:Lo/agz;

    .line 98
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string v6, "User entity association record query returned different user identities."

    const/16 v7, 0x13b5

    invoke-direct {v0, v7, v1, v6}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ez:Lo/agz;

    .line 99
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v7, 0x13b6

    invoke-direct {v0, v7, v1, v2}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eA:Lo/agz;

    .line 100
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13b7

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eH:Lo/agz;

    .line 101
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13b8

    invoke-direct {v0, v2, v1, v4}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eF:Lo/agz;

    .line 102
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13b9

    invoke-direct {v0, v2, v1, v5}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eE:Lo/agz;

    .line 103
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13ba

    invoke-direct {v0, v2, v1, v6}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eG:Lo/agz;

    .line 104
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13bc

    const-string v3, "Error validating Netflix ID cookies."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eI:Lo/agz;

    .line 105
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13bd

    const-string v3, "The maximum number of devices has been reached for this user."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eL:Lo/agz;

    .line 106
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x13be

    const-string v3, "Entity can only be used with a test user account."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eN:Lo/agz;

    .line 109
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1790

    const-string v3, "Non-replayable message non-replayable ID is out of range."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eM:Lo/agz;

    .line 112
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b58

    const-string v3, "Invalid key exchange GUID."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eJ:Lo/agz;

    .line 113
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b59

    const-string v3, "Error communicating with key exchange service"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eK:Lo/agz;

    .line 114
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b5a

    const-string v3, "Identity in challenge doesn\'t match device identity"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eO:Lo/agz;

    .line 115
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b5b

    const-string v3, "Error returned by key exchange service"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eQ:Lo/agz;

    .line 116
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b5c

    const-string v3, "Request rejected by key exchange service"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eS:Lo/agz;

    .line 117
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b5d

    const-string v3, "Internal error encountered during key exchange"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eR:Lo/agz;

    .line 118
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b5e

    const-string v3, "Request failed validation during key exchange"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eP:Lo/agz;

    .line 119
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b5f

    const-string v3, "Request blacklisted by key exchange service"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eW:Lo/agz;

    .line 120
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b60

    const-string v3, "Request could not be decoded by key exchange service"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eU:Lo/agz;

    .line 121
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b61

    const-string v3, "Widevine key exchange entity authentication scheme unknown."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eX:Lo/agz;

    .line 122
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b62

    const-string v3, "Widevine key exchange issuer data parse error."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eT:Lo/agz;

    .line 123
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b63

    const-string v3, "Widevine key exchange identity mismatch between key request data and entity auth data"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eV:Lo/agz;

    .line 124
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1b64

    const-string v3, "Widevine key exchange identity mismatch between key request data and mastertoken"

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fa:Lo/agz;

    .line 127
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f40

    const-string v3, "Error encrypting data with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fb:Lo/agz;

    .line 128
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f41

    const-string v3, "Error decrypting data with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eZ:Lo/agz;

    .line 129
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f42

    const-string v3, "Error computing MAC with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fc:Lo/agz;

    .line 130
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f43

    const-string v3, "Error verifying MAC or signature with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->eY:Lo/agz;

    .line 131
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f44

    const-string v3, "Error creating cryptex cipher or MAC context."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fg:Lo/agz;

    .line 132
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f45

    const-string v3, "Error accessing data model device."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fh:Lo/agz;

    .line 133
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f46

    const-string v3, "Data model device type not found."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fe:Lo/agz;

    .line 134
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f47

    const-string v3, "Cryptex key set not supported."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->ff:Lo/agz;

    .line 135
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f48

    const-string v3, "Insufficient privileges for cryptex operation."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fd:Lo/agz;

    .line 136
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f49

    const-string v3, "Error wrapping data with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fi:Lo/agz;

    .line 137
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f4a

    const-string v3, "Error unwrapping data with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fj:Lo/agz;

    .line 138
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f4b

    const-string v3, "Error communicating with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fm:Lo/agz;

    .line 139
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f4c

    const-string v3, "Error computing signature with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fk:Lo/agz;

    .line 140
    new-instance v0, Lo/agA;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v2, 0x1f4d

    const-string v3, "Error computing key fingerprint with cryptex."

    invoke-direct {v0, v2, v1, v3}, Lo/agA;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lo/agA;->fl:Lo/agz;

    return-void
.end method

.method protected constructor <init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V
    .locals 1

    const v0, 0x186a0

    add-int/2addr p1, v0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lo/agz;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixMslError{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/agA;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
