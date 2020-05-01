.class public final Lo/RadioButton$TaskDescription;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RadioButton;->a(Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic e:Lo/RadioButton;


# direct methods
.method constructor <init>(Lo/RadioButton;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lo/RadioButton$TaskDescription;->e:Lo/RadioButton;

    iput-object p2, p0, Lo/RadioButton$TaskDescription;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lo/RadioButton$TaskDescription;->e:Lo/RadioButton;

    invoke-static {p1}, Lo/RadioButton;->a(Lo/RadioButton;)Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/RadioButton$TaskDescription;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
