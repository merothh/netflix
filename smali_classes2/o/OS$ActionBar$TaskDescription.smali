.class final Lo/OS$ActionBar$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OS$ActionBar;->e(Lo/OS;)Lo/akj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/OS$ActionBar;

.field final synthetic b:Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

.field final synthetic d:Lo/OS;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;Lo/OS$ActionBar;Lo/OS;)V
    .locals 0

    iput-object p1, p0, Lo/OS$ActionBar$TaskDescription;->b:Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    iput-object p2, p0, Lo/OS$ActionBar$TaskDescription;->a:Lo/OS$ActionBar;

    iput-object p3, p0, Lo/OS$ActionBar$TaskDescription;->d:Lo/OS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lo/OS$ActionBar$TaskDescription;->a:Lo/OS$ActionBar;

    iget-object v0, p0, Lo/OS$ActionBar$TaskDescription;->b:Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lo/OS$ActionBar;->a(Lo/OS$ActionBar;ZLcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;)V

    return-void
.end method