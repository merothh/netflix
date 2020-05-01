.class final Lo/FilterWriter$2;
.super Lo/FilterWriter$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FilterWriter;->e()Lo/FilterWriter$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FilterWriter$ActionBar<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 0

    .line 3807
    invoke-direct {p0, p1, p2, p3}, Lo/FilterWriter$ActionBar;-><init>(ILjava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method synthetic c(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 3807
    invoke-virtual {p0, p1}, Lo/FilterWriter$2;->e(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method e(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    .line 3812
    invoke-virtual {p1}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
