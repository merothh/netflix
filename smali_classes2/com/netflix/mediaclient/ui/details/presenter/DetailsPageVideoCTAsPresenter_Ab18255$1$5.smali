.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/As;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1;->c(Lo/DC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/DC;


# direct methods
.method constructor <init>(Lo/DC;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1$5;->c:Lo/DC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoCTAsPresenter_Ab18255$1$5;->c:Lo/DC;

    check-cast v0, Lo/DC$TaskStackBuilder;

    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
