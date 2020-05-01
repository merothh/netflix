.class final Lo/AutoCompleteTextView$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AutoCompleteTextView;->c(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/VideoDetailsShareable$VideoDetailsParcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/netflix/model/leafs/VideoInfo$Sharing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/alA;


# direct methods
.method constructor <init>(Lo/alA;)V
    .locals 0

    iput-object p1, p0, Lo/AutoCompleteTextView$ActionBar;->c:Lo/alA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/model/leafs/VideoInfo$Sharing;)V
    .locals 3

    .line 183
    const-class v0, Lo/xZ;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xZ;

    const-string v1, "sharingInfo"

    .line 184
    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getTitleLogoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 185
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getVerticalBillboardUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/api/res/AssetType;->m:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-interface {v0, p1, v1}, Lo/xZ;->d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lo/AutoCompleteTextView$ActionBar$StateListAnimator;->c:Lo/AutoCompleteTextView$ActionBar$StateListAnimator;

    check-cast v0, Lio/reactivex/functions/Action;

    iget-object v1, p0, Lo/AutoCompleteTextView$ActionBar;->c:Lo/alA;

    if-eqz v1, :cond_0

    new-instance v2, Lo/BaseExpandableListAdapter;

    invoke-direct {v2, v1}, Lo/BaseExpandableListAdapter;-><init>(Lo/alA;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 189
    :cond_1
    invoke-interface {p1}, Lcom/netflix/model/leafs/VideoInfo$Sharing;->getBoxArtUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/api/res/AssetType;->a:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-interface {v0, p1, v1}, Lo/xZ;->d(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lo/AutoCompleteTextView$ActionBar$TaskDescription;->d:Lo/AutoCompleteTextView$ActionBar$TaskDescription;

    check-cast v0, Lio/reactivex/functions/Action;

    iget-object v1, p0, Lo/AutoCompleteTextView$ActionBar;->c:Lo/alA;

    if-eqz v1, :cond_2

    new-instance v2, Lo/BaseExpandableListAdapter;

    invoke-direct {v2, v1}, Lo/BaseExpandableListAdapter;-><init>(Lo/alA;)V

    move-object v1, v2

    :cond_2
    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/netflix/model/leafs/VideoInfo$Sharing;

    invoke-virtual {p0, p1}, Lo/AutoCompleteTextView$ActionBar;->a(Lcom/netflix/model/leafs/VideoInfo$Sharing;)V

    return-void
.end method
