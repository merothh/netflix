.class public interface abstract Lo/jE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/jE$TaskDescription;,
        Lo/jE$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/jE$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/jE$ActionBar;->e:Lo/jE$ActionBar;

    sput-object v0, Lo/jE;->b:Lo/jE$ActionBar;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract d(Landroid/content/Context;Z)V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
