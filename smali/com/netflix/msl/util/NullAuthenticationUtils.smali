.class public Lcom/netflix/msl/util/NullAuthenticationUtils;
.super Ljava/lang/Object;
.source "NullAuthenticationUtils.java"

# interfaces
.implements Lcom/netflix/msl/util/AuthenticationUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEntityRevoked(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/keyx/KeyExchangeScheme;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/tokens/MslUser;Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/userauth/UserAuthenticationScheme;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
