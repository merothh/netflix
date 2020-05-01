.class public Lo/Deprecated;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Deprecated$StateListAnimator;,
        Lo/Deprecated$Application;,
        Lo/Deprecated$TaskDescription;,
        Lo/Deprecated$ActionBar;
    }
.end annotation


# instance fields
.field private final b:Lo/Deprecated$ActionBar;

.field private final d:Lo/ExceptionInInitializerError;


# direct methods
.method public constructor <init>(Lo/ExceptionInInitializerError;Lo/Deprecated$ActionBar;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lo/Deprecated;->b:Lo/Deprecated$ActionBar;

    .line 107
    iput-object p1, p0, Lo/Deprecated;->d:Lo/ExceptionInInitializerError;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;)Lo/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/Enum;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/Deprecated;->d(Ljava/lang/String;Ljava/lang/Class;)Lo/Enum;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/Class;)Lo/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/Enum;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lo/Deprecated;->d:Lo/ExceptionInInitializerError;

    invoke-virtual {v0, p1}, Lo/ExceptionInInitializerError;->b(Ljava/lang/String;)Lo/Enum;

    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lo/Deprecated;->b:Lo/Deprecated$ActionBar;

    instance-of v1, v0, Lo/Deprecated$TaskDescription;

    if-eqz v1, :cond_1

    .line 162
    check-cast v0, Lo/Deprecated$TaskDescription;

    check-cast v0, Lo/Deprecated$TaskDescription;

    invoke-virtual {v0, p1, p2}, Lo/Deprecated$TaskDescription;->b(Ljava/lang/String;Ljava/lang/Class;)Lo/Enum;

    move-result-object p2

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v0, p2}, Lo/Deprecated$ActionBar;->c(Ljava/lang/Class;)Lo/Enum;

    move-result-object p2

    .line 166
    :goto_0
    iget-object v0, p0, Lo/Deprecated;->d:Lo/ExceptionInInitializerError;

    invoke-virtual {v0, p1, p2}, Lo/ExceptionInInitializerError;->c(Ljava/lang/String;Lo/Enum;)V

    return-object p2
.end method
