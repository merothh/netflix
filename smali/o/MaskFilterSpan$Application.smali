.class final Lo/MaskFilterSpan$Application;
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
.field final synthetic a:Lo/MaskFilterSpan;


# direct methods
.method constructor <init>(Lo/MaskFilterSpan;)V
    .locals 0

    iput-object p1, p0, Lo/MaskFilterSpan$Application;->a:Lo/MaskFilterSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lo/MaskFilterSpan$Application;->a:Lo/MaskFilterSpan;

    invoke-virtual {p1}, Lo/MaskFilterSpan;->dismiss()V

    return-void
.end method
