.class Lo/OnDateChangedListener$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OnDateChangedListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;Lo/OnDateChangedListener$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/OnDateChangedListener;


# direct methods
.method constructor <init>(Lo/OnDateChangedListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/OnDateChangedListener$4;->b:Lo/OnDateChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 122
    iget-object p1, p0, Lo/OnDateChangedListener$4;->b:Lo/OnDateChangedListener;

    invoke-virtual {p1, p2}, Lo/OnDateChangedListener;->c(Z)V

    return-void
.end method
