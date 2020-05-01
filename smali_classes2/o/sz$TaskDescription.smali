.class Lo/sz$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field private b:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sD$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lo/sz$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-void
.end method


# virtual methods
.method a(Lo/sD$ActionBar;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lo/sz$TaskDescription;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/sz$TaskDescription;->d:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lo/sz$TaskDescription;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method b()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
    .locals 1

    .line 148
    iget-object v0, p0, Lo/sz$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-object v0
.end method

.method c(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lo/sz$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-void
.end method

.method e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/sD$ActionBar;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lo/sz$TaskDescription;->d:Ljava/util/List;

    return-object v0
.end method
