.class public Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Class;


# instance fields
.field private final a:Lo/Byte;

.field private final b:Lo/Class;


# direct methods
.method public constructor <init>(Lo/Byte;Lo/Class;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lo/Byte;

    .line 27
    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Lo/Class;

    return-void
.end method


# virtual methods
.method public e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 32
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$5;->b:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lo/Byte;

    invoke-interface {v0, p1}, Lo/Byte;->j(Lo/UnicodeScript;)V

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lo/Byte;

    invoke-interface {v0, p1}, Lo/Byte;->d(Lo/UnicodeScript;)V

    goto :goto_0

    .line 43
    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lo/Byte;

    invoke-interface {v0, p1}, Lo/Byte;->b(Lo/UnicodeScript;)V

    goto :goto_0

    .line 40
    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lo/Byte;

    invoke-interface {v0, p1}, Lo/Byte;->c(Lo/UnicodeScript;)V

    goto :goto_0

    .line 37
    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lo/Byte;

    invoke-interface {v0, p1}, Lo/Byte;->e(Lo/UnicodeScript;)V

    goto :goto_0

    .line 34
    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lo/Byte;

    invoke-interface {v0, p1}, Lo/Byte;->a(Lo/UnicodeScript;)V

    .line 54
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Lo/Class;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2}, Lo/Class;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
