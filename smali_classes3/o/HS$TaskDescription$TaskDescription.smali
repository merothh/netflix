.class final Lo/HS$TaskDescription$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HS$TaskDescription;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/HS$TaskDescription;


# direct methods
.method constructor <init>(Lo/HS$TaskDescription;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/HS$TaskDescription$TaskDescription;->b:Lo/HS$TaskDescription;

    iput-object p2, p0, Lo/HS$TaskDescription$TaskDescription;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lo/HS$TaskDescription$TaskDescription;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lo/HS$TaskDescription$TaskDescription;->b:Lo/HS$TaskDescription;

    invoke-virtual {v1}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lo/HS$TaskDescription$TaskDescription;->b:Lo/HS$TaskDescription;

    invoke-virtual {v1}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object v1

    iget-object v2, p0, Lo/HS$TaskDescription$TaskDescription;->b:Lo/HS$TaskDescription;

    invoke-static {v2}, Lo/HS$TaskDescription;->e(Lo/HS$TaskDescription;)Lo/RelativeLayout;

    move-result-object v2

    .line 112
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lo/RelativeLayout;->e(Ljava/lang/CharSequence;)V

    .line 111
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lo/HS$TaskDescription$TaskDescription;->b:Lo/HS$TaskDescription;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/HS$TaskDescription;->a(Lo/HS$TaskDescription;Ljava/lang/Runnable;)V

    return-void
.end method
