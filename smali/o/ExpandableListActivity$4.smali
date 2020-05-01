.class Lo/ExpandableListActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ExpandableListActivity$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ExpandableListActivity;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ExpandableListActivity;


# direct methods
.method constructor <init>(Lo/ExpandableListActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lo/ExpandableListActivity$4;->a:Lo/ExpandableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V
    .locals 1

    if-nez p3, :cond_0

    .line 144
    :try_start_0
    iget-object p3, p0, Lo/ExpandableListActivity$4;->a:Lo/ExpandableListActivity;

    invoke-virtual {p3, p1, p2}, Lo/ExpandableListActivity;->c(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;)V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    .line 142
    :cond_0
    throw p3
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "unhandled error on request finish"

    .line 148
    invoke-static {p2, v0, p3}, Lo/FragmentContainer;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object p3, p0, Lo/ExpandableListActivity$4;->a:Lo/ExpandableListActivity;

    invoke-virtual {p3, p1, p2}, Lo/ExpandableListActivity;->c(Lcom/android/volley/Request;Ljava/lang/Exception;)V

    goto :goto_2

    .line 146
    :goto_1
    iget-object p3, p0, Lo/ExpandableListActivity$4;->a:Lo/ExpandableListActivity;

    invoke-virtual {p3, p1, p2}, Lo/ExpandableListActivity;->d(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    :goto_2
    return-void
.end method
