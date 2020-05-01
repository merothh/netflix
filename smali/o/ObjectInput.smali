.class public final Lo/ObjectInput;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field private final a:I

.field private final b:I

.field private final d:Lo/LineNumberInputStream;


# direct methods
.method public constructor <init>(ILo/LineNumberInputStream;I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 55
    iput p1, p0, Lo/ObjectInput;->a:I

    .line 56
    iput-object p2, p0, Lo/ObjectInput;->d:Lo/LineNumberInputStream;

    .line 57
    iput p3, p0, Lo/ObjectInput;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 69
    iget v0, p0, Lo/ObjectInput;->a:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lo/ObjectInput;->d:Lo/LineNumberInputStream;

    iget v1, p0, Lo/ObjectInput;->b:I

    invoke-virtual {v0, v1, p1}, Lo/LineNumberInputStream;->d(ILandroid/os/Bundle;)Z

    return-void
.end method
