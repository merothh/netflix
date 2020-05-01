.class public final Lo/Ic$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ic$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ic;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lo/UnicodeScript;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/Ic$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lo/Ic;


# direct methods
.method constructor <init>(Lo/Ic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lo/Ic$Activity;->a:Ljava/util/Map;

    return-void
.end method

.method private final a(IIF)Lo/Ic$ActionBar;
    .locals 2

    .line 158
    iget-object v0, p0, Lo/Ic$Activity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ic$ActionBar;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lo/Ic$ActionBar;

    invoke-direct {v0, p1, p2, p3}, Lo/Ic$ActionBar;-><init>(IIF)V

    .line 161
    iget-object p2, p0, Lo/Ic$Activity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    invoke-virtual {v0, p3}, Lo/Ic$ActionBar;->a(F)V

    return-object v0
.end method


# virtual methods
.method public e(IIF)V
    .locals 2

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lo/Ic$Activity;->a(IIF)Lo/Ic$ActionBar;

    move-result-object p1

    float-to-int p2, p3

    const/4 p3, 0x1

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ne p2, p3, :cond_1

    .line 126
    iget-object p2, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-static {p2}, Lo/Ic;->c(Lo/Ic;)Ljava/util/PriorityQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object p2, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-static {p2}, Lo/Ic;->c(Lo/Ic;)Ljava/util/PriorityQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 131
    iget-object p2, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-static {p2}, Lo/Ic;->c(Lo/Ic;)Ljava/util/PriorityQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    :goto_1
    iget-object p1, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-static {p1}, Lo/Ic;->c(Lo/Ic;)Ljava/util/PriorityQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ic$ActionBar;

    if-eqz p1, :cond_5

    .line 137
    iget-object p2, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-static {p2}, Lo/Ic;->b(Lo/Ic;)Lo/Ic$Application;

    move-result-object p2

    invoke-virtual {p1}, Lo/Ic$ActionBar;->a()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/Ic$Application;->e(Ljava/lang/Integer;)V

    .line 140
    iget-object p2, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-static {p2}, Lo/Ic;->d(Lo/Ic;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lo/Ic$ActionBar;->a()I

    move-result p3

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p3, :cond_4

    .line 141
    :goto_2
    iget-object p2, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-static {p2}, Lo/Ic;->f(Lo/Ic;)Lo/UnicodeScript;

    move-result-object p2

    invoke-interface {p2}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    const-string p3, "lifecycleOwner.lifecycle"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p2

    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p2, p3, :cond_4

    .line 142
    iget-object p2, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-static {p2}, Lo/Ic;->f(Lo/Ic;)Lo/UnicodeScript;

    move-result-object p2

    .line 143
    new-instance p3, Lo/GY$ActionBar$Application;

    .line 144
    invoke-virtual {p1}, Lo/Ic$ActionBar;->a()I

    move-result v0

    .line 145
    invoke-virtual {p1}, Lo/Ic$ActionBar;->d()I

    move-result v1

    .line 143
    invoke-direct {p3, v0, v1}, Lo/GY$ActionBar$Application;-><init>(II)V

    check-cast p3, Lo/VintfObject;

    .line 426
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, p2}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p2

    .line 427
    const-class v0, Lo/GY;

    invoke-virtual {p2, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 428
    const-class v0, Lo/GY;

    invoke-virtual {p2, v0, p3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 149
    :cond_4
    iget-object p2, p0, Lo/Ic$Activity;->b:Lo/Ic;

    invoke-virtual {p1}, Lo/Ic$ActionBar;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lo/Ic;->d(Lo/Ic;Ljava/lang/Integer;)V

    :cond_5
    return-void
.end method
