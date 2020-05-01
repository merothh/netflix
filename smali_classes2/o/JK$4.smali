.class final Lo/JK$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JK;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/JK;


# direct methods
.method constructor <init>(Lo/JK;)V
    .locals 0

    iput-object p1, p0, Lo/JK$4;->a:Lo/JK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-eq p4, p8, :cond_1

    :cond_0
    sub-int/2addr p4, p2

    .line 48
    iget-object p1, p0, Lo/JK$4;->a:Lo/JK;

    invoke-static {p1}, Lo/JK;->c(Lo/JK;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lo/JK$4;->a:Lo/JK;

    invoke-static {p2}, Lo/JK;->d(Lo/JK;)Lo/ECPrivateKeySpec;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-static {p1, p2, p4}, Lo/RemoteException;->e(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void
.end method
