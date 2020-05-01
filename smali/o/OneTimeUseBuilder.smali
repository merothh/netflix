.class public final Lo/OneTimeUseBuilder;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/OpenableColumns;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/agi;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/ContactsContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/OneTimeUseBuilder;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lo/TextInputTimePickerView;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/OneTimeUseBuilder;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    iput-object p1, p0, Lo/OneTimeUseBuilder;->e:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method public a()Lo/TextInputTimePickerView;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/OneTimeUseBuilder;->e:Lo/TextInputTimePickerView;

    return-object v0
.end method

.method public a(Lo/TextInputTimePickerView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lo/OneTimeUseBuilder;->e:Lo/TextInputTimePickerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iput-object p1, p0, Lo/OneTimeUseBuilder;->e:Lo/TextInputTimePickerView;

    .line 52
    iget-object p1, p0, Lo/OneTimeUseBuilder;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public ar_()Lo/ContactsContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lo/OneTimeUseBuilder;->d:Lo/ContactsContract;

    return-object v0
.end method

.method public b(Lo/TableLayout;)Lo/agi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "*>;)",
            "Lo/agi;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lo/OneTimeUseBuilder;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agi;

    if-eqz v0, :cond_0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lo/OneTimeUseBuilder;->e:Lo/TextInputTimePickerView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/TextInputTimePickerView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lo/OneTimeUseBuilder;->e:Lo/TextInputTimePickerView;

    invoke-interface {p1, v0}, Lo/TableLayout;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p1

    .line 72
    instance-of v0, p1, Lo/OpenableColumns;

    if-eqz v0, :cond_2

    .line 76
    move-object v0, p1

    check-cast v0, Lo/OpenableColumns;

    .line 77
    new-instance v1, Lo/ContactsContract;

    invoke-interface {v0}, Lo/OpenableColumns;->ar_()Lo/ContactsContract;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lo/ContactsContract;-><init>(Ljava/lang/Object;Lo/ContactsContract;)V

    invoke-interface {v0, v1}, Lo/OpenableColumns;->d(Lo/ContactsContract;)V

    .line 78
    iget-object v0, p0, Lo/OneTimeUseBuilder;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lo/TableLayout;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/TableLayout<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lo/OneTimeUseBuilder;->b(Lo/TableLayout;)Lo/agi;

    move-result-object v0

    .line 99
    :goto_0
    instance-of v1, v0, Lo/OneTimeUseBuilder;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lo/OneTimeUseBuilder;

    invoke-virtual {v0, p1}, Lo/OneTimeUseBuilder;->b(Lo/TableLayout;)Lo/agi;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lo/ContactsContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lo/OneTimeUseBuilder;->d:Lo/ContactsContract;

    return-void
.end method

.method public e()Lo/agi;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/OneTimeUseBuilder;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agi;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lo/OneTimeUseBuilder;->a()Lo/TextInputTimePickerView;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Ref path: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
