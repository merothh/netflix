.class final Lo/UncheckedIOException$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UncheckedIOException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# instance fields
.field final a:Z

.field final b:Lo/SerializablePermission$Activity;


# direct methods
.method constructor <init>(Lo/SerializablePermission$Activity;Z)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lo/UncheckedIOException$Application;->b:Lo/SerializablePermission$Activity;

    .line 90
    iput-boolean p2, p0, Lo/UncheckedIOException$Application;->a:Z

    return-void
.end method
