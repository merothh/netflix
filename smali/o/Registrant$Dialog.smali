.class public final Lo/Registrant$Dialog;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Registrant;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Registrant;


# direct methods
.method constructor <init>(Lo/Registrant;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lo/Registrant$Dialog;->b:Lo/Registrant;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lo/Registrant$Dialog;->b:Lo/Registrant;

    invoke-static {p1}, Lo/Registrant;->e(Lo/Registrant;)V

    return-void
.end method
