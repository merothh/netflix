.class Lo/ClassCastException$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ClassCastException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field d:Lo/Class;

.field e:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method constructor <init>(Lo/ClassCircularityError;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {p1}, Lo/ClassLoader;->c(Ljava/lang/Object;)Lo/Class;

    move-result-object p1

    iput-object p1, p0, Lo/ClassCastException$Activity;->d:Lo/Class;

    .line 355
    iput-object p2, p0, Lo/ClassCastException$Activity;->e:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method


# virtual methods
.method b(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 359
    invoke-static {p2}, Lo/ClassCastException;->c(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lo/ClassCastException$Activity;->e:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Lo/ClassCastException;->b(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Lo/ClassCastException$Activity;->e:Landroidx/lifecycle/Lifecycle$State;

    .line 361
    iget-object v1, p0, Lo/ClassCastException$Activity;->d:Lo/Class;

    invoke-interface {v1, p1, p2}, Lo/Class;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 362
    iput-object v0, p0, Lo/ClassCastException$Activity;->e:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method
