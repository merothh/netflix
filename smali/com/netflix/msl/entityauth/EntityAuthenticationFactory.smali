.class public abstract Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.super Ljava/lang/Object;
.source "EntityAuthenticationFactory.java"


# instance fields
.field private final scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;


# direct methods
.method protected constructor <init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    return-void
.end method


# virtual methods
.method public abstract createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
.end method

.method public abstract getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
.end method

.method public getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;->scheme:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    return-object v0
.end method
