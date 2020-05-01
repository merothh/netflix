.class public interface abstract Lcom/netflix/model/leafs/Bookmark;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/Bookmark$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/model/leafs/Bookmark$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/model/leafs/Bookmark$Companion;->$$INSTANCE:Lcom/netflix/model/leafs/Bookmark$Companion;

    sput-object v0, Lcom/netflix/model/leafs/Bookmark;->Companion:Lcom/netflix/model/leafs/Bookmark$Companion;

    return-void
.end method


# virtual methods
.method public abstract getBookmarkPosition()I
.end method

.method public abstract getInteractiveProgress()Ljava/lang/Integer;
.end method

.method public abstract getLastModified()J
.end method

.method public abstract setBookmarkPosition(I)V
.end method

.method public abstract setLastModified(J)V
.end method
