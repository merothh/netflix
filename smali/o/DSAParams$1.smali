.class final Lo/DSAParams$1;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DSAParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 84
    invoke-static {p1, p2}, Lo/FilterWriter;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 79
    invoke-static {p1}, Lo/FilterWriter;->A(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lo/DSAParams$1;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lo/DSAParams$1;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
