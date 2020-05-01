.class public abstract Lo/agh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Browser;
.implements Lo/OpenableColumns;
.implements Lo/agj;


# instance fields
.field protected final b:Lo/TableLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/ContactsContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ContactsContract<",
            "Lo/OneTimeUseBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lo/TableLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/agh;->b:Lo/TableLayout;

    return-void
.end method


# virtual methods
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

    .line 30
    iget-object v0, p0, Lo/agh;->e:Lo/ContactsContract;

    return-object v0
.end method

.method public bm()Lo/TableLayout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/agh;->b:Lo/TableLayout;

    return-object v0
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

    .line 35
    iput-object p1, p0, Lo/agh;->e:Lo/ContactsContract;

    return-void
.end method
