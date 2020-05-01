.class Landroidx/activity/OnBackPressedDispatcher$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Landroidx/activity/OnBackPressedDispatcher;

.field private final d:Lo/TaskDescription;


# direct methods
.method constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Lo/TaskDescription;)V
    .locals 0

    .line 200
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$ActionBar;->b:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$ActionBar;->d:Lo/TaskDescription;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 206
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$ActionBar;->b:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v0, v0, Landroidx/activity/OnBackPressedDispatcher;->c:Ljava/util/ArrayDeque;

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher$ActionBar;->d:Lo/TaskDescription;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$ActionBar;->d:Lo/TaskDescription;

    invoke-virtual {v0, p0}, Lo/TaskDescription;->d(Lo/Activity;)V

    return-void
.end method
