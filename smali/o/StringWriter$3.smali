.class final Lo/StringWriter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Deprecated$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StringWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Class;)Lo/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/Enum;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 45
    new-instance p1, Lo/StringWriter;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lo/StringWriter;-><init>(Z)V

    return-object p1
.end method
