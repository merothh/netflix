.class public Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;
.super Lcom/netflix/msl/userauth/UserAuthenticationScheme;
.source "NetflixUserAuthenticationScheme.java"


# static fields
.field public static final MDX:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

.field public static final NETFLIXID:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

.field public static final SSO:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

.field public static final SWITCH_PROFILE:Lcom/netflix/msl/userauth/UserAuthenticationScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;

    const-string/jumbo v1, "NETFLIXID"

    invoke-direct {v0, v1}, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->NETFLIXID:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    new-instance v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;

    const-string/jumbo v1, "SSO"

    invoke-direct {v0, v1}, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->SSO:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    new-instance v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;

    const-string/jumbo v1, "SWITCH_PROFILE"

    invoke-direct {v0, v1}, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->SWITCH_PROFILE:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    new-instance v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;

    const-string/jumbo v1, "MDX"

    invoke-direct {v0, v1}, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->MDX:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/msl/userauth/UserAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method
