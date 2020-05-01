.class final Lo/WP$Activity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WP$Activity;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/WP$Activity;


# direct methods
.method constructor <init>(Lo/WP$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/WP$Activity$3;->a:Lo/WP$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lo/WP$Activity$3;->a:Lo/WP$Activity;

    iget-object v0, v0, Lo/WP$Activity;->d:Lo/WP;

    invoke-static {v0}, Lo/WP;->b(Lo/WP;)V

    return-void
.end method
