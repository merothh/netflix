.class public final Landroidx/lifecycle/Lifecycling$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Class;


# direct methods
.method constructor <init>(Lo/Class;)V
    .locals 0

    .line 56
    iput-object p1, p0, Landroidx/lifecycle/Lifecycling$1;->a:Lo/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/lifecycle/Lifecycling$1;->a:Lo/Class;

    invoke-interface {v0, p1, p2}, Lo/Class;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
