.class final Lo/YY$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/YY;


# direct methods
.method constructor <init>(Lo/YY;)V
    .locals 0

    iput-object p1, p0, Lo/YY$PendingIntent;->c:Lo/YY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lo/YY$PendingIntent;->c:Lo/YY;

    invoke-static {p1}, Lo/YY;->h(Lo/YY;)V

    return-void
.end method
