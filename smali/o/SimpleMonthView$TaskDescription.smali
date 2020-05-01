.class final Lo/SimpleMonthView$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SimpleMonthView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/SimpleMonthView;


# direct methods
.method constructor <init>(Lo/SimpleMonthView;)V
    .locals 0

    iput-object p1, p0, Lo/SimpleMonthView$TaskDescription;->e:Lo/SimpleMonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lo/SimpleMonthView$TaskDescription;->e:Lo/SimpleMonthView;

    invoke-static {p1}, Lo/SimpleMonthView;->e(Lo/SimpleMonthView;)V

    return-void
.end method
