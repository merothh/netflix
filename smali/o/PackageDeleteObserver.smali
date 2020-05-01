.class public final Lo/PackageDeleteObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Person$ActionBar;


# instance fields
.field private final synthetic d:Lo/alA;


# direct methods
.method public constructor <init>(Lo/alA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PackageDeleteObserver;->d:Lo/alA;

    return-void
.end method


# virtual methods
.method public final synthetic e(Ljava/lang/Thread;)V
    .locals 1

    iget-object v0, p0, Lo/PackageDeleteObserver;->d:Lo/alA;

    invoke-interface {v0, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "invoke(...)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
