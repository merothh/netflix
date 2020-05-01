.class public interface abstract annotation Lcom/netflix/model/leafs/originals/interactive/animations/Ease$ANIMATION_EASE_TYPE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/animations/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ANIMATION_EASE_TYPE"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CUBIC_BEZIER:Ljava/lang/String; = "cubic-bezier"

.field public static final IN_OUT:Ljava/lang/String; = "ease-in-out-cubic"

.field public static final LINEAR:Ljava/lang/String; = "linear"

.field public static final PATH:Ljava/lang/String; = "path"
