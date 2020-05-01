.class Lo/IL$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IL;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IL;


# direct methods
.method constructor <init>(Lo/IL;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lo/IL$1;->d:Lo/IL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 451
    iget-object p1, p0, Lo/IL$1;->d:Lo/IL;

    invoke-virtual {p1}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->a(Landroid/content/Context;)V

    return-void
.end method
