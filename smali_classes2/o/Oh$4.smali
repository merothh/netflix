.class final Lo/Oh$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Oh;-><init>(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Oh;


# direct methods
.method constructor <init>(Lo/Oh;)V
    .locals 0

    iput-object p1, p0, Lo/Oh$4;->e:Lo/Oh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lo/Oh$4;->e:Lo/Oh;

    invoke-static {p1}, Lo/Oh;->c(Lo/Oh;)Landroid/widget/CompoundButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 38
    iget-object p1, p0, Lo/Oh$4;->e:Lo/Oh;

    sget-object v0, Lo/Od$TaskDescription$Application;->a:Lo/Od$TaskDescription$Application;

    invoke-virtual {p1, v0}, Lo/Oh;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 39
    iget-object p1, p0, Lo/Oh$4;->e:Lo/Oh;

    sget-object v0, Lo/Od$TaskDescription$Activity;->a:Lo/Od$TaskDescription$Activity;

    invoke-virtual {p1, v0}, Lo/Oh;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
