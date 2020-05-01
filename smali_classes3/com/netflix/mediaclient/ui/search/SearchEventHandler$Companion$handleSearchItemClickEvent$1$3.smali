.class final Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->e(Lcom/netflix/mediaclient/ui/trackinginfo/CLListTrackingInfoBase;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;->b:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;->b:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;->b:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->c:Lo/Bx;

    invoke-interface {v0}, Lo/Bx;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;->b:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->c:Lo/Bx;

    invoke-interface {v0}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object v3

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;->b:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->c:Lo/Bx;

    invoke-interface {v0}, Lo/Bx;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;->b:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v5, v0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->d:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1$3;->b:Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;

    iget-object v6, v0, Lcom/netflix/mediaclient/ui/search/SearchEventHandler$Companion$handleSearchItemClickEvent$1;->i:Ljava/lang/String;

    const/4 v7, 0x0

    .line 47
    invoke-static/range {v1 .. v7}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
