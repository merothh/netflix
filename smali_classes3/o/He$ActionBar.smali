.class final Lo/He$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/He;->e(Lo/He$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/He;


# direct methods
.method constructor <init>(Lo/He;)V
    .locals 0

    iput-object p1, p0, Lo/He$ActionBar;->b:Lo/He;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lo/He$ActionBar;->b:Lo/He;

    invoke-virtual {v0}, Lo/He;->h()Lo/alA;

    move-result-object v0

    const-string v1, "view"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
