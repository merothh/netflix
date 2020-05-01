.class Lo/LV$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lo/LV$12;->c:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 945
    iget-object p1, p0, Lo/LV$12;->c:Lo/LV;

    const-string v0, "pause pressed"

    invoke-static {p1, v0}, Lo/LV;->e(Lo/LV;Ljava/lang/String;)V

    .line 946
    iget-object p1, p0, Lo/LV$12;->c:Lo/LV;

    invoke-static {p1}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object p1

    invoke-interface {p1}, Lo/LW;->i()V

    .line 947
    iget-object p1, p0, Lo/LV$12;->c:Lo/LV;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/LV;->d(Z)V

    return-void
.end method
