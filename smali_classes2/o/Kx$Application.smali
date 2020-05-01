.class public final Lo/Kx$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Kx;->setHeaderView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lo/ParcelFileDescriptor;

.field final synthetic d:Lo/Kx;


# direct methods
.method public constructor <init>(Lo/ParcelFileDescriptor;Lo/Kx;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/Kx$Application;->c:Lo/ParcelFileDescriptor;

    iput-object p2, p0, Lo/Kx$Application;->d:Lo/Kx;

    iput-object p3, p0, Lo/Kx$Application;->b:Landroid/view/View;

    iput-object p4, p0, Lo/Kx$Application;->a:Landroid/view/View;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 350
    iget-object p1, p0, Lo/Kx$Application;->c:Lo/ParcelFileDescriptor;

    iget-object p2, p0, Lo/Kx$Application;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/ParcelFileDescriptor;->e(I)V

    return-void
.end method
