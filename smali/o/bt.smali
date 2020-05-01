.class abstract Lo/bt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bx;


# instance fields
.field protected d:Lo/ds;


# direct methods
.method constructor <init>(Lo/ds;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/bt;->d:Lo/ds;

    .line 24
    invoke-virtual {p0}, Lo/bt;->a()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract e()V
.end method
