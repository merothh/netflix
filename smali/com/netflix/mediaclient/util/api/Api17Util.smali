.class public Lcom/netflix/mediaclient/util/api/Api17Util;
.super Ljava/lang/Object;
.source "Api17Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeRelativeLayoutParamsRule(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method
