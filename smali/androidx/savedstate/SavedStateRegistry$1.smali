.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Field;->c(Landroidx/lifecycle/Lifecycle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Field;


# direct methods
.method public constructor <init>(Lo/Field;)V
    .locals 0

    .line 197
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->d:Lo/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 200
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 201
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->d:Lo/Field;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lo/Field;->a:Z

    goto :goto_0

    .line 202
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 203
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->d:Lo/Field;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lo/Field;->a:Z

    :cond_1
    :goto_0
    return-void
.end method
