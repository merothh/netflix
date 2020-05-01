.class public final synthetic Lo/HH;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/HH;->b:[I

    sget-object v0, Lo/HH;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY_EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/HH;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY_MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
