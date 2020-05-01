.class public Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

.field private final b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;-><init>(Ljava/lang/Long;Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->b:Ljava/lang/Long;

    .line 180
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->a:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;)Ljava/lang/Long;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->b:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;)Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->a:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/Long;Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->a:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    .line 193
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->b:Ljava/lang/Long;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    .line 198
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method
