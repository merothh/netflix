.class final Lo/MaskFilterSpan$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MaskFilterSpan;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/MaskFilterSpan;


# direct methods
.method constructor <init>(Lo/MaskFilterSpan;)V
    .locals 0

    iput-object p1, p0, Lo/MaskFilterSpan$TaskDescription;->d:Lo/MaskFilterSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lo/MaskFilterSpan$TaskDescription;->d:Lo/MaskFilterSpan;

    invoke-virtual {p1}, Lo/MaskFilterSpan;->dismiss()V

    .line 156
    iget-object p1, p0, Lo/MaskFilterSpan$TaskDescription;->d:Lo/MaskFilterSpan;

    invoke-static {p1}, Lo/MaskFilterSpan;->b(Lo/MaskFilterSpan;)Lo/MetricAffectingSpan;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/MetricAffectingSpan;->a()V

    :cond_0
    return-void
.end method
