.class final Lo/MenuPopupWindow$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/MenuPopupWindow;


# direct methods
.method constructor <init>(Lo/MenuPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lo/MenuPopupWindow$ActionBar;->c:Lo/MenuPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lo/BC;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/BC;

    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lo/MenuPopupWindow$ActionBar;->c:Lo/MenuPopupWindow;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    const-string v1, "profile.profileGuid"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/MenuPopupWindow;->setSelected(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
