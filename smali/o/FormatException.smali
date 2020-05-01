.class public interface abstract Lo/FormatException;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FormatException$StateListAnimator;,
        Lo/FormatException$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/FormatException$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/FormatException$ActionBar;->d:Lo/FormatException$ActionBar;

    sput-object v0, Lo/FormatException;->c:Lo/FormatException$ActionBar;

    return-void
.end method


# virtual methods
.method public abstract c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;)V
.end method

.method public abstract c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;)V
.end method
