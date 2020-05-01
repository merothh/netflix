.class public interface abstract annotation Lcom/netflix/model/leafs/originals/interactive/Action$ActionType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ActionType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final EXIT_TO_CREDITS:Ljava/lang/String; = "exitToCredits"

.field public static final EXIT_TO_POSTPLAY:Ljava/lang/String; = "exitToPostPlay"

.field public static final NEXT_EPISODE:Ljava/lang/String; = "playNextEpisode"

.field public static final UNDEFINED:Ljava/lang/String; = "un_defi_ned"
