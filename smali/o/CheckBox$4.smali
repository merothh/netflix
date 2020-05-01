.class final Lo/CheckBox$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CheckBox;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/ECPrivateKeySpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/CheckBox;


# direct methods
.method constructor <init>(Lo/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lo/CheckBox$4;->c:Lo/CheckBox;

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

    .line 94
    iget-object p1, p0, Lo/CheckBox$4;->c:Lo/CheckBox;

    invoke-static {p1}, Lo/CheckBox;->b(Lo/CheckBox;)Lo/ECPrivateKeySpec;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p2, p0, Lo/CheckBox$4;->c:Lo/CheckBox;

    iget-object p2, p2, Lo/CheckBox;->i:Landroid/view/View;

    const-string p3, "loading"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p1, p4}, Lo/RemoteException;->e(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void
.end method
