.class Lo/Jw$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lo/Jw$3;->e:Lo/Jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 262
    iget-object p1, p0, Lo/Jw$3;->e:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->e(Lo/Jw;)Landroid/widget/EditText;

    move-result-object p1

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    :cond_0
    return-void
.end method
