.class public final enum Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

.field public static final enum c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;",
            "Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    .line 24
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->a:[Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->e:Ljava/util/Map;

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private c(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b:Ljava/util/Map;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;

    .line 99
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "nf_media_drm"

    const-string v3, "Found override per target"

    .line 103
    invoke-static {v2, v3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v1, p2, p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->d(Ljava/lang/Long;Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v1, "nf_media_drm"

    const-string v2, "Override per target is bad, this should not happen!"

    .line 107
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->e:Ljava/util/Map;

    monitor-enter v1

    .line 112
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->e:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;

    .line 113
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    const-string v0, "nf_media_drm"

    const-string v1, "Found override per movie"

    .line 116
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v2, p2, p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->d(Ljava/lang/Long;Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)Z

    move-result p1

    return p1

    :cond_4
    return v0

    :catchall_1
    move-exception p1

    .line 113
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;
    .locals 1

    .line 24
    const-class v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;
    .locals 1

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->a:[Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;)V
    .locals 3

    .line 159
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->a(Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->e:Ljava/util/Map;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->a(Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->d(Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;)Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b:Ljava/util/Map;

    monitor-enter v0

    .line 165
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;->d(Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider$ActionBar;)Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const-string p1, "nf_media_drm"

    const-string v0, "Bad override"

    .line 168
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Bad override for MediaDrm"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 63
    sget-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-virtual {p3, v1}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return v0

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->a(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 74
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "nf_media_drm"

    const-string p2, "Using Platform Widevine"

    .line 81
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 40
    sget-object v1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    invoke-virtual {p3, v1}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return v0

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->a(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 51
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "nf_media_drm"

    const-string p2, "Using Platform Widevine"

    .line 58
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
