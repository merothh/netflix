.class final Lo/HI$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HI;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/HI;


# direct methods
.method constructor <init>(Lo/HI;)V
    .locals 0

    iput-object p1, p0, Lo/HI$ActionBar;->a:Lo/HI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 20
    iget-object p1, p0, Lo/HI$ActionBar;->a:Lo/HI;

    invoke-virtual {p1}, Lo/HI;->o()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 21
    iget-object v0, p0, Lo/HI$ActionBar;->a:Lo/HI;

    invoke-virtual {v0}, Lo/HI;->h()Lo/UpdateEngine;

    move-result-object v0

    new-instance v1, Lo/GY$LoaderManager;

    invoke-direct {v1, p1}, Lo/GY$LoaderManager;-><init>(I)V

    check-cast v1, Lo/VintfObject;

    .line 36
    const-class p1, Lo/GY;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_0
    return-void
.end method
