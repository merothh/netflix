.class public Lcom/netflix/msl/client/NetflixUrlProviderFactory;
.super Ljava/lang/Object;
.source "NetflixUrlProviderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Lcom/netflix/msl/client/NetflixEnvironment;)Lcom/netflix/msl/client/NetflixUrlProvider;
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/msl/client/NetflixUrlProviderFactory$1;->$SwitchMap$com$netflix$msl$client$NetflixEnvironment:[I

    invoke-virtual {p0}, Lcom/netflix/msl/client/NetflixEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown environment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :pswitch_0
    new-instance v0, Lcom/netflix/msl/client/NetflixUrlProviderFactory$ProductionNetflixUrlProvider;

    invoke-direct {v0}, Lcom/netflix/msl/client/NetflixUrlProviderFactory$ProductionNetflixUrlProvider;-><init>()V

    .line 11
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/netflix/msl/client/NetflixUrlProviderFactory$TestNetflixUrlProvider;

    invoke-direct {v0}, Lcom/netflix/msl/client/NetflixUrlProviderFactory$TestNetflixUrlProvider;-><init>()V

    goto :goto_0

    .line 9
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
